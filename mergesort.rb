class Mergesort # Mezclamos todo
  def initialize
  end

  def self.hayquedividir?(array)
    return true if array.length > 1
  end

  def self.ordenar(array)
    if hayquedividir?(array)
      mitad_array = ((array.length) / 2)
      arrayizq = ordenar(array.take(mitad_array))
      arraydrch = ordenar(array.drop(mitad_array))
      mezclar(arrayizq, arraydrch)
    else
      array
    end
  end

  def self.mezclar(arrayizq, arraydrch)
    if arrayizq.empty?
      arraydrch
    elsif arraydrch.empty?
      arrayizq
    elsif arrayizq.first < arraydrch.first
      [arrayizq.first] + mezclar(arrayizq[1..arrayizq.length], arraydrch)
    else
      [arraydrch.first] + mezclar(arrayizq, arraydrch[1..arraydrch.length])
    end
  end
end
