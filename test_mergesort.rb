require 'test/unit'
require_relative 'Mergesort_2.0'

class Test_mergesort < Test::Unit::TestCase

	def test_hayquedividir?
		array=[1,2,3,4]
		assert_equal(true, hayquedividir?(array) )

	end

	# def test_dividir_array_par
	# 	array=[1,2,3,4]
	# 	lista = Mergesort.new()
	# 	assert_equal( [1,2,3,4], lista.dividir(array) )
	# end

	# def test_dividir_array_impar
	# 	array=[1,2,3,4,5]
	# 	lista = Mergesort.new()
	# 	assert_equal( [1,2,3,4,5], lista.dividir(array))
	# end


	def test_mezclar_nums_ordenados
		array1 = [2]
		array2 = [1]
		assert_equal( [1,2],mezclar(array1,array2) )
	end

	# def test_mezclar_nums_desordenados
	# 	array1=[1,2]
	# 	array2=[3,4,5]
	# 	lista = Mergesort.new()
	# 	assert_equal( [1,2,3,4,5], lista.mezclar(array1,array2) )
	# end

	def test_ordenar_num_facil
		array = [5,4,3,1,2]	
		assert_equal([1,2,3,4,5], mergesort(array) )		
	end

	def test_ordenar_num_dificil
		array = [9,4,3,7,1]
		assert_equal([1,3,4,7,9], mergesort(array))
	end

	def test_ordenar_cadenas
		array = ["Avion","casa","barco"]
		assert_equal(["Avion","barco", "casa"], mergesort(array))
	end
	def test_ordenar_floats
		array = [3.0, 7.2, 2.0]
		assert_equal([2.0, 3.0, 7.2], mergesort(array))
	end

end