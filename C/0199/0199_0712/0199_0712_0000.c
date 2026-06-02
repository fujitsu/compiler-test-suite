#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed char);
extern unsigned char (*v2) (unsigned short, signed char);
extern signed short v3 (signed int, unsigned char, signed int, unsigned char);
extern signed short (*v4) (signed int, unsigned char, signed int, unsigned char);
extern signed short v5 (signed char, signed short);
extern signed short (*v6) (signed char, signed short);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
signed char v9 (signed int, unsigned short, signed char);
signed char (*v10) (signed int, unsigned short, signed char) = v9;
extern void v11 (signed int, signed char);
extern void (*v12) (signed int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern void v15 (void);
extern void (*v16) (void);
unsigned short v17 (unsigned char, signed int, unsigned char, signed int);
unsigned short (*v18) (unsigned char, signed int, unsigned char, signed int) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (signed short, signed char);
extern unsigned int (*v22) (signed short, signed char);
void v23 (signed short, unsigned short, signed int);
void (*v24) (signed short, unsigned short, signed int) = v23;
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
extern unsigned char v29 (signed short);
extern unsigned char (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 7;
signed char v32 = -2;
signed char v31 = -1;

void v23 (signed short v34, unsigned short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed char v39 = 3;
unsigned int v38 = 1U;
signed int v37 = -2;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

unsigned short v17 (unsigned char v40, signed int v41, unsigned char v42, signed int v43)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned int v46 = 5U;
signed char v45 = -4;
signed short v44 = 1;
trace++;
switch (trace)
{
case 9: 
{
signed short v47;
unsigned char v48;
v47 = v44 + v44;
v48 = v29 (v47);
history[history_index++] = (int)v48;
}
break;
case 11: 
return 6;
default: abort ();
}
}
}
}

signed char v9 (signed int v49, unsigned short v50, signed char v51)
{
history[history_index++] = (int)v49;
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
signed short v54 = 3;
signed int v53 = -2;
unsigned short v52 = 0;
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
unsigned short v57;
signed char v58;
unsigned char v59;
v57 = v33 + v33;
v58 = 3 + v32;
v59 = v1 (v57, v58);
history[history_index++] = (int)v59;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
