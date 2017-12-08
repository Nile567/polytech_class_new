class Square {



    float x, y, s;

    Square(float _x, float _y, float _s) {

        this.x = _x;

        this.y = _y;

        this.s = _s;

    }







    void right(float _s) {

        this.x += _s;

    }

}

class Kvadrat extends Square {



    color c;

    Kvadrat(float _x, float _y, float _s, color _c) {

        super(_x, _y, _s);

        this.c = _c;

    }



    void draw() {

        rect(this.x, this.y, this.s, this.s);

        fill(this.c);

    }

}

Kvadrat[] k_array;

void setup()

{

    fullScreen();



    k_array = new Kvadrat[15];

    for (int i = 0; i < 10; i++) {

        k_array[i] = new Kvadrat(random(width), random(height), 100.0, int(color(random(255), random(255), random(255))));

    }

}

void draw()

{

    background(0);



    for (int i = 0; i < 10; i++) {

        k_array[i].draw();

        k_array[i].right(random(5));

    }

}