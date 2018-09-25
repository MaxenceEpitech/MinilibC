/*
** EPITECH PROJECT, 2018
** 
** File description:
** 
*/

#include <stdio.h>

int main(int ac, char **av)
{
	if (ac > 1) {
		printf("size = %ld\n", strlen(av[1]));
	}
}
