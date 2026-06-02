#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char, signed int, unsigned short, signed int);
extern signed char (*v2) (unsigned char, signed int, unsigned short, signed int);
signed char v3 (void);
signed char (*v4) (void) = v3;
signed short v5 (unsigned int);
signed short (*v6) (unsigned int) = v5;
unsigned int v7 (signed char);
unsigned int (*v8) (signed char) = v7;
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed int v13 (signed char, unsigned short, unsigned char);
extern signed int (*v14) (signed char, unsigned short, unsigned char);
extern signed char v15 (unsigned int, signed int, unsigned char);
extern signed char (*v16) (unsigned int, signed int, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v21 (signed int, signed char);
extern signed short (*v22) (signed int, signed char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
unsigned short v32 = 4;
signed char v31 = 2;

unsigned int v7 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -2;
unsigned int v36 = 6U;
signed char v35 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned int v41 = 2U;
signed char v40 = 1;
signed char v39 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (void)
{
{
for (;;) {
signed char v44 = 2;
unsigned char v43 = 4;
signed short v42 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned char v47;
signed int v48;
unsigned short v49;
signed int v50;
signed char v51;
v47 = v33 + v33;
v48 = -2 - -1;
v49 = v32 + v32;
v50 = -2 - 3;
v51 = v1 (v47, v48, v49, v50);
history[history_index++] = (int)v51;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
