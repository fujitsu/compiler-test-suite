#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, unsigned short, unsigned char);
extern unsigned int (*v2) (signed int, signed short, unsigned short, unsigned char);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned char v7 (signed int);
unsigned char (*v8) (signed int) = v7;
extern unsigned int v13 (signed int, unsigned int);
extern unsigned int (*v14) (signed int, unsigned int);
extern signed int v15 (signed char, signed short);
extern signed int (*v16) (signed char, signed short);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern unsigned char v19 (unsigned char, unsigned int);
extern unsigned char (*v20) (unsigned char, unsigned int);
extern unsigned short v21 (unsigned short, unsigned short);
extern unsigned short (*v22) (unsigned short, unsigned short);
extern signed short v23 (signed int, unsigned int, signed int, signed char);
extern signed short (*v24) (signed int, unsigned int, signed int, signed char);
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned int v27 (unsigned char, unsigned short);
extern unsigned int (*v28) (unsigned char, unsigned short);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
unsigned int v32 = 3U;
unsigned char v31 = 2;

signed char v25 (void)
{
{
for (;;) {
signed short v36 = -1;
signed short v35 = -4;
signed char v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (signed int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -2;
unsigned char v39 = 3;
unsigned short v38 = 5;
trace++;
switch (trace)
{
case 2: 
return 5;
case 4: 
return 1;
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
signed int v43;
signed short v44;
unsigned short v45;
unsigned char v46;
unsigned int v47;
v43 = v33 + v33;
v44 = 1 - -4;
v45 = 7 - 3;
v46 = 2 + v31;
v47 = v1 (v43, v44, v45, v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
