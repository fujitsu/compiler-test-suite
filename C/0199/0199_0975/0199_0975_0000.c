#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern void v3 (signed short, signed char, signed short, signed int);
extern void (*v4) (signed short, signed char, signed short, signed int);
extern unsigned char v5 (unsigned char, signed short);
extern unsigned char (*v6) (unsigned char, signed short);
signed char v7 (signed short, signed short);
signed char (*v8) (signed short, signed short) = v7;
void v9 (unsigned char);
void (*v10) (unsigned char) = v9;
extern signed int v11 (signed short, signed short);
extern signed int (*v12) (signed short, signed short);
extern void v13 (unsigned int, signed int);
extern void (*v14) (unsigned int, signed int);
extern void v15 (unsigned char);
extern void (*v16) (unsigned char);
signed short v17 (void);
signed short (*v18) (void) = v17;
unsigned char v19 (signed int, unsigned int, unsigned int, signed int);
unsigned char (*v20) (signed int, unsigned int, unsigned int, signed int) = v19;
extern unsigned short v21 (unsigned short, signed int);
extern unsigned short (*v22) (unsigned short, signed int);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed int v27 (unsigned char, unsigned char);
extern signed int (*v28) (unsigned char, unsigned char);
extern void v29 (unsigned char, unsigned short);
extern void (*v30) (unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 6;
signed char v32 = 3;
unsigned char v31 = 6;

unsigned char v19 (signed int v34, unsigned int v35, unsigned int v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -4;
signed short v39 = 0;
signed char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed int v43 = -3;
signed int v42 = -4;
signed short v41 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v44)
{
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 0;
signed short v46 = -3;
signed char v45 = 2;
trace++;
switch (trace)
{
case 4: 
{
signed int v48;
unsigned char v49;
v48 = v47 - -3;
v49 = v23 (v48);
history[history_index++] = (int)v49;
}
break;
case 7: 
{
signed int v50;
unsigned char v51;
v50 = v47 + -2;
v51 = v23 (v50);
history[history_index++] = (int)v51;
}
break;
case 13: 
return;
case 16: 
return;
default: abort ();
}
}
}
}

signed char v7 (signed short v52, signed short v53)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
signed char v56 = -3;
unsigned int v55 = 7U;
unsigned int v54 = 4U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v57;
v57 = 4 - 0;
v15 (v57);
}
break;
case 3: 
{
unsigned char v58;
v58 = 1 - 7;
v9 (v58);
}
break;
case 17: 
return v56;
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
signed short v61;
signed int v62;
v61 = 3 + 3;
v62 = v1 (v61);
history[history_index++] = (int)v62;
}
} while (trace < 18);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
