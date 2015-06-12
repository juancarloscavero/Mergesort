def hayquedividir?(array)
		if array.length > 1
			return true
		end
end


def mergesort(array)
	if hayquedividir?(array)
		medio= ((array.length) /2)
		arrayizq = mergesort(array.take(medio))
		arraydrch = mergesort(array.drop(medio))
		mezclar(arrayizq,arraydrch)
	else
		array
	end
end

def mezclar(arrayizq,arraydrch)
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