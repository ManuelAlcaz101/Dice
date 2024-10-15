void setup() {
    size(400, 400);  
    noLoop();  
}

void draw() {
    background(255);  
    int total = 0;

    
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            Die die = new Die(100 + i * 60, 100 + j * 60);  
            die.show();
            total += die.value;  
        }
    }

    fill(0);  
    textSize(20);
    text("Total: " + total, 50, 50);  
}

void mousePressed() {
    redraw();  
}

class Die {
    int x, y;  
    int value; 

    Die(int x, int y) {
        this.x = x;
        this.y = y;
        roll();  
    }

    void roll() {
        value = (int)(Math.random() * 6) + 1;  
    }

    void show() {
        fill(255);  
        rect(x, y, 50, 50);  

        fill(0);  
        if (value == 1) {
            ellipse(x + 25, y + 25, 10, 10);  
        } else if (value == 2) {
            ellipse(x + 15, y + 15, 10, 10);  
            ellipse(x + 35, y + 35, 10, 10);  
        } else if (value == 3) {
            ellipse(x + 15, y + 15, 10, 10);  
            ellipse(x + 25, y + 25, 10, 10);  
            ellipse(x + 35, y + 35, 10, 10);  
        } else if (value == 4) {
            ellipse(x + 15, y + 15, 10, 10);  
            ellipse(x + 35, y + 15, 10, 10);  
            ellipse(x + 15, y + 35, 10, 10);  
            ellipse(x + 35, y + 35, 10, 10);  
        } else if (value == 5) {
            ellipse(x + 15, y + 15, 10, 10);  
            ellipse(x + 35, y + 15, 10, 10);  
            ellipse(x + 25, y + 25, 10, 10);  
            ellipse(x + 15, y + 35, 10, 10);  
            ellipse(x + 35, y + 35, 10, 10);  
        } else if (value == 6) {
            ellipse(x + 15, y + 15, 10, 10);  
            ellipse(x + 35, y + 15, 10, 10);  
            ellipse(x + 15, y + 25, 10, 10);  
            ellipse(x + 35, y + 25, 10, 10);  
            ellipse(x + 15, y + 35, 10, 10);  
            ellipse(x + 35, y + 35, 10, 10); 
        }
    }
}