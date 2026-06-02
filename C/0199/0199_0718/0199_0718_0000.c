#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern signed short v3 (unsigned int, signed char);
extern signed short (*v4) (unsigned int, signed char);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern signed short v9 (unsigned short, unsigned int, unsigned int);
extern signed short (*v10) (unsigned short, unsigned int, unsigned int);
extern signed short v11 (unsigned char, unsigned char);
extern signed short (*v12) (unsigned char, unsigned char);
extern unsigned int v13 (unsigned char, unsigned int, unsigned char, signed int);
extern unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed int);
extern signed char v15 (unsigned char, signed int, unsigned int);
extern signed char (*v16) (unsigned char, signed int, unsigned int);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned int v19 (signed int, signed int);
extern unsigned int (*v20) (signed int, signed int);
unsigned char v21 (signed short, unsigned int, unsigned int);
unsigned char (*v22) (signed short, unsigned int, unsigned int) = v21;
signed char v23 (unsigned int, signed short, signed int, signed char);
signed char (*v24) (unsigned int, signed short, signed int, signed char) = v23;
extern unsigned short v25 (unsigned int, unsigned int, unsigned int);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned int);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed int v29 (unsigned char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
unsigned char v32 = 6;
signed short v31 = -1;

signed char v23 (unsigned int v34, signed short v35, signed int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned char v40 = 2;
signed short v39 = -3;
unsigned short v38 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed short v41, unsigned int v42, unsigned int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 5U;
signed short v45 = -4;
signed char v44 = 2;
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
signed char v49;
v49 = v1 ();
history[history_index++] = (int)v49;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
