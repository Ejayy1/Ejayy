#include <graphics.h>
#include <cmath>

void drawUSAFlag() {
    int gd = DETECT, gm;
    initgraph(&gd, &gm, "");

    
    setfillstyle(SOLID_FILL, BLUE);
    bar(0, 0, 640, 192);

   
    setfillstyle(SOLID_FILL, RED);
    for (int i = 0; i < 13; i++) {
        bar(0, 192 + i * 16, 640, 192 + (i + 1) * 16);
    }

    
    setfillstyle(SOLID_FILL, WHITE);
    float starSize = 14;
    float x_offset = 55;
    float y_offset = 35;

    for (int row = 0; row < 5; ++row) {
        for (int col = 0; col < 6; ++col) {
            int x_points[5], y_points[5];

            for (int i = 0; i < 5; ++i) {
                float angle = 3.14159f * i / 5 + 3.14159f / 2;
                x_points[i] = x_offset + col * 100 + starSize * cos(angle);
                y_points[i] = y_offset - row * 75 + starSize * sin(angle);
            }

            fillpoly(5, x_points, y_points);
        }
    }

    getch();
    closegraph();
}

int main() {
    drawUSAFlag();
    return 0;
}
