#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
signed char v5 (unsigned short, unsigned short, signed int);
signed char (*v6) (unsigned short, unsigned short, signed int) = v5;
extern unsigned short v7 (signed short, signed short, signed char, signed int);
extern unsigned short (*v8) (signed short, signed short, signed char, signed int);
extern signed char v9 (unsigned int, signed int);
extern signed char (*v10) (unsigned int, signed int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
void v21 (unsigned int, signed short, signed short, signed int);
void (*v22) (unsigned int, signed short, signed short, signed int) = v21;
extern unsigned char v23 (signed short, signed char, signed char);
extern unsigned char (*v24) (signed short, signed char, signed char);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (signed int, signed int);
extern void (*v28) (signed int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 2;
unsigned short v32 = 1;
unsigned short v31 = 6;

void v21 (unsigned int v34, signed short v35, signed short v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -2;
unsigned char v39 = 7;
unsigned short v38 = 1;
trace++;
switch (trace)
{
case 7: 
{
signed short v41;
signed char v42;
signed char v43;
unsigned char v44;
v41 = v36 - v35;
v42 = 3 + 0;
v43 = v40 + -1;
v44 = v23 (v41, v42, v43);
history[history_index++] = (int)v44;
}
break;
case 9: 
{
signed short v45;
signed char v46;
signed char v47;
unsigned char v48;
v45 = -3 - v36;
v46 = v40 - -3;
v47 = -3 - 2;
v48 = v23 (v45, v46, v47);
history[history_index++] = (int)v48;
}
break;
case 11: 
return;
case 13: 
return;
case 15: 
return;
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
unsigned short v51 = 0;
signed short v50 = -4;
signed char v49 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (unsigned short v52, unsigned short v53, signed int v54)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = -1;
signed short v56 = 2;
signed int v55 = -3;
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
signed short v60;
v60 = v1 ();
history[history_index++] = (int)v60;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
