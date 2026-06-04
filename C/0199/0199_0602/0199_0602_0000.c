#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char);
extern signed char (*v2) (signed char);
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
extern unsigned char v5 (signed short, signed int, unsigned int, signed int);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed int);
unsigned char v7 (unsigned short, signed char, unsigned short, unsigned int);
unsigned char (*v8) (unsigned short, signed char, unsigned short, unsigned int) = v7;
extern unsigned short v9 (signed short, unsigned short);
extern unsigned short (*v10) (signed short, unsigned short);
extern unsigned short v11 (signed char);
extern unsigned short (*v12) (signed char);
void v13 (unsigned char);
void (*v14) (unsigned char) = v13;
extern unsigned char v15 (signed int, unsigned char, signed char, signed char);
extern unsigned char (*v16) (signed int, unsigned char, signed char, signed char);
extern unsigned short v17 (unsigned int, unsigned int);
extern unsigned short (*v18) (unsigned int, unsigned int);
extern unsigned char v19 (signed char, signed int);
extern unsigned char (*v20) (signed char, signed int);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v26) (signed short, unsigned short, unsigned int, unsigned char);
void v27 (unsigned int, unsigned short, signed short, unsigned char);
void (*v28) (unsigned int, unsigned short, signed short, unsigned char) = v27;
extern unsigned short v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 0;
signed int v32 = -4;
unsigned int v31 = 6U;

void v27 (unsigned int v34, unsigned short v35, signed short v36, unsigned char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = 1;
unsigned int v39 = 7U;
unsigned short v38 = 7;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v41;
unsigned short v42;
signed short v43;
unsigned short v44;
unsigned short v45;
v41 = 1 + v35;
v42 = v35 - v35;
v43 = -3 - v36;
v44 = 7 + v38;
v45 = v29 (v41, v42, v43, v44);
history[history_index++] = (int)v45;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned int v48 = 2U;
unsigned short v47 = 4;
unsigned char v46 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (unsigned char v49)
{
history[history_index++] = (int)v49;
{
for (;;) {
unsigned char v52 = 7;
unsigned short v51 = 0;
unsigned short v50 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v53, signed char v54, unsigned short v55, unsigned int v56)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
history[history_index++] = (int)v56;
{
for (;;) {
signed short v59 = 1;
unsigned short v58 = 0;
unsigned short v57 = 1;
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
signed char v62;
signed char v63;
v62 = v33 - v33;
v63 = v1 (v62);
history[history_index++] = (int)v63;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
