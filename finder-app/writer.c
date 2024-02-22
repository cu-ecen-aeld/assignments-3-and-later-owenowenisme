#include "syslog.h"
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
int main(int argc, char *argv[]) {
    openlog("writer", LOG_PID|LOG_CONS, LOG_USER);
    if (argc<3){
        closelog();
        exit(1);
    }
    FILE *file;
    file = fopen(argv[1], "w");
    if (file == NULL) {
        syslog(LOG_ERR, "Error opening file %s", argv[1]);
        closelog();
        exit(1);
    }
    fprintf(file, "%s", argv[2]);
    fclose(file);
    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    closelog();
    return 0;
}