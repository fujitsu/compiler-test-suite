#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short);
extern unsigned short (*v2) (unsigned short);
extern signed char v3 (signed short, unsigned char, signed int, signed int);
extern signed char (*v4) (signed short, unsigned char, signed int, signed int);
unsigned short v5 (unsigned char, signed char, signed short);
unsigned short (*v6) (unsigned char, signed char, signed short) = v5;
void v7 (signed char, signed char, unsigned int);
void (*v8) (signed char, signed char, unsigned int) = v7;
extern unsigned short v9 (unsigned short, unsigned char, unsigned int);
extern unsigned short (*v10) (unsigned short, unsigned char, unsigned int);
extern signed char v11 (signed char, signed char, unsigned int, signed int);
extern signed char (*v12) (signed char, signed char, unsigned int, signed int);
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
unsigned int v15 (signed short);
unsigned int (*v16) (signed short) = v15;
signed short v17 (signed int, unsigned char);
signed short (*v18) (signed int, unsigned char) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (unsigned int, unsigned char, unsigned char);
extern signed char (*v22) (unsigned int, unsigned char, unsigned char);
extern unsigned short v23 (unsigned char, signed char, unsigned int);
extern unsigned short (*v24) (unsigned char, signed char, unsigned int);
extern unsigned short v25 (signed char);
extern unsigned short (*v26) (signed char);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 6;
unsigned int v32 = 3U;
signed short v31 = 2;

signed short v17 (signed int v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 1U;
signed short v37 = 1;
unsigned char v36 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed short v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
unsigned short v42 = 6;
unsigned short v41 = 3;
signed short v40 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v7 (signed char v43, signed char v44, unsigned int v45)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed int v48 = -1;
signed short v47 = -1;
signed short v46 = -3;
trace++;
switch (trace)
{
case 2: 
return;
case 6: 
{
unsigned int v49;
unsigned char v50;
unsigned char v51;
signed char v52;
v49 = v45 - v45;
v50 = 6 + 4;
v51 = 1 + 4;
v52 = v21 (v49, v50, v51);
history[history_index++] = (int)v52;
}
break;
case 10: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v53, signed char v54, signed short v55)
{
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
history[history_index++] = (int)v55;
{
for (;;) {
unsigned char v58 = 7;
unsigned int v57 = 5U;
unsigned char v56 = 0;
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
unsigned short v61;
unsigned short v62;
v61 = 3 - 1;
v62 = v1 (v61);
history[history_index++] = (int)v62;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
