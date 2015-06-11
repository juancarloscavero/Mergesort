require 'test/unit'
require_relative 'Mergesort'

class Test_mergesort < Test::Unit::TestCase

	def test_hayquedividir?
		assert_equal(true, hayquedividir?([1,2,3,4]) )

	end

	def test_ordenar_num_facil	
		assert_equal([1,2,3,4,5], mergesort([5,4,3,1,2]) )		
	end

	def test_ordenar_num_dificil
		assert_equal([1,3,4,7,9], mergesort([9,4,3,7,1]))
	end

	def test_ordenar_cadenas
		assert_equal(["Avion","barco", "casa"], mergesort(["Avion","casa","barco"]))
	end
	def test_ordenar_floats
		assert_equal([2.0, 3.0, 7.2], mergesort([3.0, 7.2, 2.0]))
	end

end