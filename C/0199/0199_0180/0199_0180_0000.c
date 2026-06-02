#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern signed short v3 (signed char, unsigned int, unsigned int, signed short);
extern signed short (*v4) (signed char, unsigned int, unsigned int, signed short);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern signed char v11 (unsigned short, signed short);
extern signed char (*v12) (unsigned short, signed short);
extern unsigned char v13 (signed short, signed short);
extern unsigned char (*v14) (signed short, signed short);
extern void v17 (unsigned short, signed short);
extern void (*v18) (unsigned short, signed short);
unsigned short v19 (unsigned char, signed int, signed char, unsigned char);
unsigned short (*v20) (unsigned char, signed int, signed char, unsigned char) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
unsigned char v23 (unsigned short, unsigned int, signed int, unsigned int);
unsigned char (*v24) (unsigned short, unsigned int, signed int, unsigned int) = v23;
extern signed short v25 (signed short, unsigned int, signed int, unsigned char);
extern signed short (*v26) (signed short, unsigned int, signed int, unsigned char);
extern unsigned char v27 (signed char);
extern unsigned char (*v28) (signed char);
extern signed char v29 (unsigned int, unsigned int);
extern signed char (*v30) (unsigned int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 4;
signed short v32 = 3;
signed short v31 = 0;

unsigned char v23 (unsigned short v34, unsigned int v35, signed int v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 3;
unsigned char v39 = 2;
unsigned char v38 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v19 (unsigned char v41, signed int v42, signed char v43, unsigned char v44)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = -3;
signed int v46 = 2;
signed short v45 = -3;
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
unsigned int v50;
v50 = v1 ();
history[history_index++] = (int)v50;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
