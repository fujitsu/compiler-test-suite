#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned int);
extern unsigned int (*v2) (unsigned short, unsigned int);
signed char v3 (signed short, unsigned int);
signed char (*v4) (signed short, unsigned int) = v3;
extern unsigned char v5 (signed char, signed int, signed int, signed char);
extern unsigned char (*v6) (signed char, signed int, signed int, signed char);
extern unsigned short v7 (signed int, unsigned char, signed char, signed int);
extern unsigned short (*v8) (signed int, unsigned char, signed char, signed int);
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
extern unsigned char v11 (signed short);
extern unsigned char (*v12) (signed short);
extern unsigned char v13 (signed char, unsigned short);
extern unsigned char (*v14) (signed char, unsigned short);
extern signed char v15 (unsigned int, unsigned int);
extern signed char (*v16) (unsigned int, unsigned int);
extern void v17 (unsigned short, signed char, unsigned int);
extern void (*v18) (unsigned short, signed char, unsigned int);
extern unsigned char v19 (signed short, signed short);
extern unsigned char (*v20) (signed short, signed short);
extern signed short v21 (unsigned char, unsigned char, signed char);
extern signed short (*v22) (unsigned char, unsigned char, signed char);
extern void v23 (unsigned int);
extern void (*v24) (unsigned int);
unsigned int v25 (void);
unsigned int (*v26) (void) = v25;
extern void v27 (signed int, signed char);
extern void (*v28) (signed int, signed char);
extern unsigned int v29 (signed int);
extern unsigned int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -3;
unsigned short v32 = 4;
unsigned int v31 = 3U;

unsigned int v25 (void)
{
{
for (;;) {
unsigned short v36 = 1;
unsigned char v35 = 3;
unsigned char v34 = 5;
trace++;
switch (trace)
{
case 6: 
{
signed int v37;
signed char v38;
v37 = 1 + -1;
v38 = -3 + 1;
v27 (v37, v38);
}
break;
case 8: 
{
signed int v39;
signed char v40;
v39 = -1 + -3;
v40 = 2 - 3;
v27 (v39, v40);
}
break;
case 10: 
return 4U;
default: abort ();
}
}
}
}

signed char v3 (signed short v41, unsigned int v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed short v45 = 1;
unsigned short v44 = 5;
signed char v43 = 1;
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
unsigned short v48;
unsigned int v49;
unsigned int v50;
v48 = v32 + v32;
v49 = 0U - 3U;
v50 = v1 (v48, v49);
history[history_index++] = (int)v50;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
