package be.vdab.pizzaluigi.web;

import static org.junit.Assert.*;

import java.math.BigDecimal;

import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.junit.Before;
import org.junit.Test;

public class VanTotPrijsFormTest {
	private Validator validator;
	@Before
	public void before() {
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		validator = factory.getValidator();
	}
	@Test
	public void vanOk() {
		assertTrue(validator.validateValue(VanTotPrijsForm.class, "van", BigDecimal.ONE).isEmpty());
	}
	@Test
	public void vanMoetIngevuldZijn() {
		assertFalse(validator.validateValue(VanTotPrijsForm.class, "van", null).isEmpty());
	}
	@Test
	public void vanMoetMinstensNulZijn() {
		assertFalse(validator.validateValue(VanTotPrijsForm.class, "van", BigDecimal.valueOf(-1)).isEmpty());
	}
	@Test
	public void totOk() {
		assertTrue(validator.validateValue(VanTotPrijsForm.class, "tot", BigDecimal.ONE).isEmpty());
	}
	@Test
	public void totMoetIngevuldZijn() {
		assertFalse(validator.validateValue(VanTotPrijsForm.class, "tot", null).isEmpty());
	}
	@Test
	public void totMoetMinstensNulZijn() {
		assertFalse(validator.validateValue(VanTotPrijsForm.class, "tot", BigDecimal.valueOf(-1)).isEmpty());
	}
}
