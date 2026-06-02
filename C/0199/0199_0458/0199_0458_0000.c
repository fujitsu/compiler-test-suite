#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed int v3 (unsigned char, unsigned char, signed char, unsigned int);
extern signed int (*v4) (unsigned char, unsigned char, signed char, unsigned int);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned short v17 (unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned short, unsigned int);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
extern signed char v21 (signed char, unsigned short);
extern signed char (*v22) (signed char, unsigned short);
extern signed short v23 (unsigned char, signed char, unsigned char, unsigned short);
extern signed short (*v24) (unsigned char, signed char, unsigned char, unsigned short);
signed short v25 (signed char, unsigned int, signed int, signed char);
signed short (*v26) (signed char, unsigned int, signed int, signed char) = v25;
extern signed char v27 (unsigned int, unsigned short, signed int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short, signed int, unsigned short);
extern void v29 (unsigned short, unsigned char, unsigned int, unsigned char);
extern void (*v30) (unsigned short, unsigned char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
signed short v32 = 2;
signed int v31 = 0;

signed short v25 (signed char v34, unsigned int v35, signed int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -1;
signed int v39 = 3;
unsigned char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
unsigned char v43 = 7;
unsigned char v42 = 2;
signed char v41 = -2;
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
signed short v46;
v46 = v1 ();
history[history_index++] = (int)v46;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
