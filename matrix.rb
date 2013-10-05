#!/usr/bin/ruby

a = [[2,0,1],[3,0,0],[5,1,1]] # Inicialización de la matriz 3*3 de nombre A.
b = [[1,0,1],[1,2,1],[1,1,0]] # Inicialización de la matriz 3*3 de nombre B.
$row = 3 # Número de filas de la matriz.
$colum = 3 # Número de columnas de la matriz.

# Se define la función de Suma:
def sumar(a,b)
	@c = Array.new($row) { Array.new($colum) } # Se inicializa una matriz de tamaño row*colum.
	$row.times do |i| # Se itera por cada fila.
		$colum.times do |j| # Se itera por cada columna.
			@c[i][j] = a[i][j] + b[i][j] # Se añade el elemento resultado [i][j] a la matriz c.
		end
	end
	imprimir @c # Se llama a la función imprimir.
end

# Se define la función de Multiplicación:
def multiplicar(a,b)
	@c = Array.new($row) { Array.new($colum) }
	@acumulado = 0 # Se guarda temporalmente el valor del sumatorio de multiplicaciones.
	$row.times do |i| # Se recorren filas A.
		$colum.times do |j| # Se recorren columnas A.
			@acumulado = 0 
			$row.times do |k| # Se recorren la columna de B.
				@acumulado += a[i][k] * b[k][j]
			end
			@c[i][j] = @acumulado # Se guarda el valor del acumulado en la matriz temporal c.
		end
	end
	imprimir @c # Se llama a la función imprimir.
end
=begin
<<<<<<< HEAD
def imprimir(array)
	$row.times do |i|
		$colum.times do |j|
			print array[j][i].to_s
		end
	end
end

imprimir a
imprimir b
sumar(a,b)
multiplicar(a,b)
=======

def imprimir(array)
	$row.times do |i|
		$colum.times do |j|
			print array[i][j].to_s + " "
		end
		puts "\n"
	end
	puts "\n"
end
>>>>>>> development_carlos
=end

# Se define la función de imprimir:
def imprimir(array)
	$row.times do |i|
		$colum.times do |j|
			print array[i][j].to_s + " " # Se imprime el elemento concatenado con un espacio.
			#Alternativa al print anterior:  print "#{array[i][j]} ".
		end
		puts "\n"
	end
	puts "\n"
end

#Llamadas a las funciones:
print "Matriz A: \n"
imprimir a
print "Matriz B: \n"
imprimir b
print "Suma de Matrices: \n"
sumar(a,b)
print "Multiplicación de matrices: \n"
multiplicar(a,b)

