#include <stdio.h>

int main() {
    // Set the content type header
    printf("Content-Type: application/json\n\n");

    // Output the JSON response
    printf("{\"mensaje\":\"Hola mundo desde el servidor\"}\n");

    return 0;
}