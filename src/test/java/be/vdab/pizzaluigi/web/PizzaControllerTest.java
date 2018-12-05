package be.vdab.pizzaluigi.web;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.when;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.web.servlet.ModelAndView;

import be.vdab.pizzaluigi.entities.Pizza;
import be.vdab.pizzaluigi.services.EuroService;
import be.vdab.pizzaluigi.services.PizzaService;

@RunWith(MockitoJUnitRunner.class)
public class PizzaControllerTest {
	@Mock
	private PizzaService dummyPizzaService;
	private EuroService dummyEuroService;
	private PizzaController controller;
	@Before
	public void before() {
		when(dummyPizzaService.read(1)).thenReturn(Optional.of(new Pizza(1, "Test", BigDecimal.ONE, true)));
		controller = new PizzaController(dummyEuroService, dummyPizzaService);
	}
	@Test
	public void pizzaWerktSamenMetDeJspPizza() {
		ModelAndView modelAndView = controller.pizza(1);
		assertEquals("pizza", modelAndView.getViewName());
	}
	@Test
	public void pizzaGeeftPizzaDoor() {
		ModelAndView modelAndView = controller.pizza(1);
		assertTrue(modelAndView.getModel().get("pizza") instanceof List);
	}
	@Test
	public void onbestaandePizza() {
		ModelAndView modelAndView = controller.pizza(-1);
		assertFalse(modelAndView.getModel().containsKey("pizza"));
	}
	@Test
	public void pizzaWerktSamenMetDeJspPizzas() {
		ModelAndView modelAndView = controller.pizzas();
		assertEquals("pizzas", modelAndView.getViewName());
	}
	@Test
	public void pizzaGeeftPizzasDoor() {
		ModelAndView modelAndView = controller.pizzas();
		assertTrue(modelAndView.getModel().get("pizzas") instanceof Map);
	}

}
