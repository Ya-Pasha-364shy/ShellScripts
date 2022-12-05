#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
    int fc[2];
    int result1;
    size_t size;
    char resstring[26];

    /* будем делать cat */

    int res1 = pipe(fc);

    if(res1 < 0)
    {
        printf("Can\'t create pipe\n");
        exit(-1);
    }
    /* Порождаем новый процесс */
    result1 = fork();

    if(result1 < 0)
    {
        printf("Can't fork child\n");
        exit(-1);
    } 
    else if (result1 > 0)
    {
        close(fc[0]);
        // Данные из файла по пути попадут в stdout
        execl("/bin/cat", "-n", "/home/k1rch/.hidden/hello.txt", NULL);

	close(fc[1]);
        printf("Parent exit\n");
    } 
    else
    {
        close(fc[1]);
        // пишем все содержимое файла ~/.hidden/hello.txt
        size = read(fc[0], resstring, 25);
        if(size < 0)
        {
            printf("Can't read string\n");
            exit(-1);
        }
        resstring[26] = '\0';

        printf("%s\n",resstring);
        close(fc[0]);
    }

    return 0;
} 
