#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
void v3 (signed short);
void (*v4) (signed short) = v3;
extern void v5 (signed char);
extern void (*v6) (signed char);
extern unsigned char v7 (unsigned char, signed char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed char, unsigned short);
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern void v11 (unsigned int, signed int, signed int);
extern void (*v12) (unsigned int, signed int, signed int);
extern unsigned char v13 (signed int, signed int, unsigned char);
extern unsigned char (*v14) (signed int, signed int, unsigned char);
extern signed char v15 (unsigned int, unsigned int);
extern signed char (*v16) (unsigned int, unsigned int);
extern unsigned char v17 (signed short, unsigned int, signed char, unsigned char);
extern unsigned char (*v18) (signed short, unsigned int, signed char, unsigned char);
extern signed char v21 (signed int, unsigned short);
extern signed char (*v22) (signed int, unsigned short);
unsigned int v23 (unsigned short);
unsigned int (*v24) (unsigned short) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed short v27 (unsigned char, signed int);
extern signed short (*v28) (unsigned char, signed int);
signed int v29 (signed char, unsigned int, signed int);
signed int (*v30) (signed char, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
signed int v32 = -2;
unsigned char v31 = 7;

signed int v29 (signed char v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 2;
unsigned int v38 = 1U;
signed int v37 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned short v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed int v43 = 0;
signed int v42 = -4;
signed short v41 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v44;
signed int v45;
unsigned char v46;
unsigned char v47;
v44 = v43 + v42;
v45 = -3 - v42;
v46 = 5 - 2;
v47 = v13 (v44, v45, v46);
history[history_index++] = (int)v47;
}
break;
case 14: 
return 3U;
default: abort ();
}
}
}
}

void v3 (signed short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
unsigned short v51 = 6;
unsigned int v50 = 0U;
unsigned char v49 = 2;
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
unsigned short v54;
v54 = 2 + 6;
v1 (v54);
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
