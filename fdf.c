#include <mlx.h>
#include <stdio.h>

int	main(void)
{
	void	*mlx;
	void	*mlx_win;

	printf("before init\n");
	mlx = mlx_init();
	printf("after init\n");
	mlx_win = mlx_new_window(mlx, 1920, 1080, "Hello world!");
	printf("after new window\n");
	mlx_loop(mlx);
	printf("should not be printed\n");

	return (0);
}
