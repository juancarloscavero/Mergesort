require 'simplecov'
SimpleCov.start

require 'test/unit'
require_relative 'mergesort'
# Testeamos nuestro mergesort
class TestMergesort < Test::Unit::TestCase
  def test_hayquedividir?
    assert_equal(true, Mergesort.new.hayquedividir?([1, 2, 3, 4]))
  end

  def test_ordenar_num_facil
    assert_equal([1, 2, 3, 4], Mergesort.new.ordenar([4, 3, 1, 2]))
  end

  def test_ordenar_num_dificil
    assert_equal([1, 3, 4, 7, 9], Mergesort.new.ordenar([9, 4, 3, 7, 1]))
  end

  def test_ordenar_cadenas
    assert_equal(%w(Avion casa), Mergesort.new.ordenar(%w(casa Avion)))
  end

  def test_ordenar_floats
    assert_equal([2.0, 3.0, 7.2], Mergesort.new.ordenar([3.0, 7.2, 2.0]))
  end

  def test_caracteres_especiales
    assert_equal(['#', '*', '/'], Mergesort.new.ordenar(['/', '*', '#']))
  end

  def test_mayusculas
    assert_equal(%w(A B C a b c), Mergesort.new.ordenar(%w(a c b C A B)))
  end
end
