#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

void *thread_function(void *arg) {
    printf("Hilo creado\n");
    pthread_exit(NULL);
}

int main() {
    pid_t pid;
    pthread_t thread;
    int num_processes = 0;
    int num_threads = 0;

    pid = fork();
    if (pid == 0) {
        pthread_create(&thread, NULL, thread_function, NULL);
        num_threads++;
    } else if (pid > 0) {
        num_processes++;
        pid = fork();
        if (pid == 0) { /* child process */
            pthread_create(&thread, NULL, thread_function, NULL);
            num_threads++;
        } else if (pid > 0) {
            num_processes++;
            fork();
            if (pid == 0) { /* child process */
                pthread_create(&thread, NULL, thread_function, NULL);
                num_threads++;
            } else if (pid > 0) {
                num_processes++;
            } else {
                perror("fork");
                exit(EXIT_FAILURE);
            }
        } 
    }

    printf("Numero de procesos: %d\n", num_processes);
    printf("Nuero de hilos creados: %d\n", num_threads);

    return 0;
}