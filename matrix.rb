#!/usr/bin/ruby

a = [[2,0,1],[3,0,0],[5,1,1]]
b = [[1,0,1],[1,2,1],[1,1,0]]
$row = 3 # Número de filas de la matriz
$colum = 3 # Número de columnas de la matriz


def sumar(a,b)
	@c = Array.new($row) { Array.new($colum) }
	$row.times do |i|
		$colum.times do |j|
			@c[i][j] = a[i][j] + b[i][j]
		end
	end
	imprimir @c
end

