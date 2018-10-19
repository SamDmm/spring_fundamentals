package be.vdab.pizzaluigi.web;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("pizzas")
class PizzaController {
	private static final String PIZZAS_VIEW = "pizzas";
	private final List<String> pizzas = Arrays.asList("Prosciutto", "Margherita", "Calzone");
	@GetMapping
	ModelAndView pizzas() {
		return new ModelAndView(PIZZAS_VIEW, "pizzas", pizzas);
	}
}
