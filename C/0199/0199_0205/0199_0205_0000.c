#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short, signed char, signed char);
extern signed int (*v2) (signed short, signed char, signed char);
extern signed short v3 (signed char, unsigned int);
extern signed short (*v4) (signed char, unsigned int);
extern void v5 (unsigned short, signed short);
extern void (*v6) (unsigned short, signed short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (unsigned int, unsigned short, unsigned char);
extern unsigned char (*v12) (unsigned int, unsigned short, unsigned char);
extern signed int v13 (signed char, unsigned short, signed int);
extern signed int (*v14) (signed char, unsigned short, signed int);
extern unsigned int v15 (unsigned char);
extern unsigned int (*v16) (unsigned char);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
signed int v23 (signed char);
signed int (*v24) (signed char) = v23;
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (unsigned int, signed char, unsigned short);
extern void (*v28) (unsigned int, signed char, unsigned short);
extern signed char v29 (unsigned int, signed short, unsigned short);
extern signed char (*v30) (unsigned int, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = -2;
signed int v32 = -1;
unsigned char v31 = 7;

signed int v23 (signed char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
unsigned int v37 = 4U;
signed int v36 = 0;
signed int v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
signed char v40 = -4;
signed int v39 = 3;
signed short v38 = -2;
trace++;
switch (trace)
{
case 11: 
return 3U;
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
signed short v43;
signed char v44;
signed char v45;
signed int v46;
v43 = -3 - 3;
v44 = -4 - v33;
v45 = v33 + v33;
v46 = v1 (v43, v44, v45);
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
