package main

import "fmt"

func fibo(index int, elemanlar []int) []int{
	a,b:=1,1
	i:=2
	elemanlar=append(elemanlar,a);
	for ;i<index;i++ {
		elemanlar=append(elemanlar,b);
		temp:=a+b
		a=b
		b=temp
	}
	elemanlar=append(elemanlar,b);
	return elemanlar
}

func main() {
	var elemanlar []int
	fmt.Println(fibo(500,elemanlar))
}
