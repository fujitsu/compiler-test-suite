#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed char, signed short, signed short);
extern signed int (*v2) (signed char, signed short, signed short);
extern signed int v3 (signed int, signed int);
extern signed int (*v4) (signed int, signed int);
extern void v5 (signed short, unsigned char);
extern void (*v6) (signed short, unsigned char);
extern unsigned short v7 (unsigned short, signed int, signed int);
extern unsigned short (*v8) (unsigned short, signed int, signed int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
unsigned int v17 (unsigned char, unsigned char, unsigned char);
unsigned int (*v18) (unsigned char, unsigned char, unsigned char) = v17;
extern unsigned short v19 (unsigned char, unsigned int);
extern unsigned short (*v20) (unsigned char, unsigned int);
extern signed short v21 (unsigned short, unsigned char, signed int);
extern signed short (*v22) (unsigned short, unsigned char, signed int);
extern void v23 (unsigned short, unsigned short, unsigned char);
extern void (*v24) (unsigned short, unsigned short, unsigned char);
extern signed int v25 (signed short, signed char, signed short);
extern signed int (*v26) (signed short, signed char, signed short);
extern signed int v27 (unsigned int, signed int, signed int);
extern signed int (*v28) (unsigned int, signed int, signed int);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned short v32 = 6;
unsigned short v31 = 5;

unsigned int v17 (unsigned char v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned int v38 = 3U;
signed char v37 = 3;
trace++;
switch (trace)
{
case 2: 
return v38;
case 4: 
return v38;
case 6: 
{
unsigned int v40;
signed int v41;
signed int v42;
signed int v43;
v40 = v38 + v38;
v41 = -4 + -3;
v42 = 3 + 3;
v43 = v27 (v40, v41, v42);
history[history_index++] = (int)v43;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed short v46 = 3;
unsigned int v45 = 5U;
unsigned char v44 = 0;
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
signed short v50;
signed short v51;
signed int v52;
v49 = -1 - 0;
v50 = 2 + -2;
v51 = 1 - 3;
v52 = v1 (v49, v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
