#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
unsigned char v3 (signed char);
unsigned char (*v4) (signed char) = v3;
extern signed short v5 (unsigned char);
extern signed short (*v6) (unsigned char);
extern signed int v7 (unsigned char, signed char, signed char);
extern signed int (*v8) (unsigned char, signed char, signed char);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed short v13 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v14) (signed int, unsigned char, unsigned char, signed int);
extern unsigned int v15 (unsigned int, unsigned short, signed int);
extern unsigned int (*v16) (unsigned int, unsigned short, signed int);
extern signed int v17 (signed int, signed int, unsigned short);
extern signed int (*v18) (signed int, signed int, unsigned short);
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 7;
unsigned char v32 = 6;
signed short v31 = 0;

signed char v19 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned char v37 = 7;
signed int v36 = -1;
signed char v35 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed char v38)
{
history[history_index++] = (int)v38;
{
for (;;) {
unsigned short v41 = 5;
unsigned char v40 = 4;
unsigned char v39 = 3;
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
unsigned short v44;
v44 = 1 - 1;
v1 (v44);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
