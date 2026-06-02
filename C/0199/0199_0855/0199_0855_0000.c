#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned char);
extern signed char (*v2) (unsigned char);
unsigned int v3 (unsigned short, signed int, unsigned short, signed short);
unsigned int (*v4) (unsigned short, signed int, unsigned short, signed short) = v3;
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed char v9 (signed int, unsigned char);
extern signed char (*v10) (signed int, unsigned char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
extern unsigned char v19 (unsigned short, unsigned int);
extern unsigned char (*v20) (unsigned short, unsigned int);
unsigned char v21 (signed short, signed short);
unsigned char (*v22) (signed short, signed short) = v21;
extern signed int v25 (signed int, unsigned short);
extern signed int (*v26) (signed int, unsigned short);
unsigned short v27 (unsigned short, unsigned short);
unsigned short (*v28) (unsigned short, unsigned short) = v27;
void v29 (unsigned char, signed int, unsigned char, unsigned int);
void (*v30) (unsigned char, signed int, unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed short v32 = 0;
unsigned int v31 = 2U;

void v29 (unsigned char v34, signed int v35, unsigned char v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed char v40 = -2;
unsigned char v39 = 1;
unsigned char v38 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v27 (unsigned short v41, unsigned short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
signed int v45 = -3;
unsigned short v44 = 6;
signed char v43 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v21 (signed short v46, signed short v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 2;
unsigned char v49 = 3;
signed short v48 = 3;
trace++;
switch (trace)
{
case 4: 
return v49;
case 8: 
{
unsigned char v51;
v51 = v49 - v49;
v7 (v51);
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}

unsigned int v3 (unsigned short v52, signed int v53, unsigned short v54, signed short v55)
{
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 3;
unsigned short v57 = 4;
signed int v56 = 2;
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
unsigned char v61;
signed char v62;
v61 = 0 + 2;
v62 = v1 (v61);
history[history_index++] = (int)v62;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
