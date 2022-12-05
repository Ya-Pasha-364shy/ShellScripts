#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int fc[2];
    int result1;
    size_t size;
    char resstring[256];

    /* будем делать ls */
    int res1 = pipe(fc);

    if(res1 < 0)
    {
        printf("Can\'t create pipe\n");
        exit(-1);
    }
    result1 = fork();

    if(result1 < 0)
    {
        printf("Can\'t fork child\n");
        exit(-1);
    } 
    else if (result1 > 0)
    {
        close(fc[0]);
	// вывод ls всегда будет ассоциироваться с выводом директорий в /proc XD
	execl("/bin/ls", "-k", "/proc", NULL);
        close(fc[1]);
        printf("Parent exit\n");
    } 
    else
    {
        close(fc[1]);
        size = read(fc[0], resstring, 255);
        if(size < 0)
        {
            printf("Can\'t read string\n");
            exit(-1);
        }
        resstring[256] = '\0';
        
	printf("%s\n",resstring);
        close(fc[0]);
    }
    return 0;
}
