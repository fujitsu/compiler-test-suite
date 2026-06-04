#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (unsigned char, signed int, unsigned short, signed short);
extern signed int (*v4) (unsigned char, signed int, unsigned short, signed short);
extern signed int v5 (unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned short);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
unsigned int v9 (signed short, unsigned short, signed char);
unsigned int (*v10) (signed short, unsigned short, signed char) = v9;
signed short v11 (void);
signed short (*v12) (void) = v11;
extern unsigned short v13 (unsigned char, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned int, unsigned char);
extern void v15 (signed int, signed char, signed int);
extern void (*v16) (signed int, signed char, signed int);
extern unsigned char v19 (signed short, signed char, signed char, unsigned short);
extern unsigned char (*v20) (signed short, signed char, signed char, unsigned short);
extern void v21 (signed char);
extern void (*v22) (signed char);
signed int v23 (unsigned int, unsigned int, signed short);
signed int (*v24) (unsigned int, unsigned int, signed short) = v23;
signed short v25 (unsigned int, signed int, signed short);
signed short (*v26) (unsigned int, signed int, signed short) = v25;
extern signed char v27 (unsigned char, unsigned short);
extern signed char (*v28) (unsigned char, unsigned short);
extern unsigned char v29 (signed char, unsigned char, unsigned short, signed short);
extern unsigned char (*v30) (signed char, unsigned char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
signed short v32 = -2;
unsigned char v31 = 0;

signed short v25 (unsigned int v34, signed int v35, signed short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 5;
signed int v38 = -3;
unsigned int v37 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (unsigned int v40, unsigned int v41, signed short v42)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 6;
unsigned int v44 = 7U;
unsigned int v43 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (void)
{
{
for (;;) {
unsigned char v48 = 4;
unsigned char v47 = 5;
signed char v46 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed char v49;
v49 = v46 + -3;
v21 (v49);
}
break;
case 5: 
{
signed char v50;
v50 = 0 - -4;
v21 (v50);
}
break;
case 7: 
return 0;
default: abort ();
}
}
}
}

unsigned int v9 (signed short v51, unsigned short v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned int v56 = 7U;
signed char v55 = 1;
signed short v54 = 2;
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
signed int v59;
v59 = v1 ();
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
