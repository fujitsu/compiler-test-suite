#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned char, signed int, signed short, unsigned short);
extern signed int (*v2) (unsigned char, signed int, signed short, unsigned short);
unsigned int v3 (signed short, unsigned char);
unsigned int (*v4) (signed short, unsigned char) = v3;
signed int v5 (unsigned char, unsigned short, unsigned int);
signed int (*v6) (unsigned char, unsigned short, unsigned int) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern unsigned char v11 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v12) (signed short, unsigned short, unsigned short, signed int);
extern unsigned int v13 (signed char, unsigned short, signed short, unsigned int);
extern unsigned int (*v14) (signed char, unsigned short, signed short, unsigned int);
extern signed short v15 (signed char, unsigned int, signed short);
extern signed short (*v16) (signed char, unsigned int, signed short);
signed char v17 (unsigned short, signed short);
signed char (*v18) (unsigned short, signed short) = v17;
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
extern void v23 (signed char, unsigned short, signed short);
extern void (*v24) (signed char, unsigned short, signed short);
unsigned char v25 (signed int, unsigned int, unsigned short);
unsigned char (*v26) (signed int, unsigned int, unsigned short) = v25;
extern void v27 (unsigned char, unsigned short, unsigned int, unsigned int);
extern void (*v28) (unsigned char, unsigned short, unsigned int, unsigned int);
extern void v29 (signed int, signed char, unsigned short);
extern void (*v30) (signed int, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -2;
signed int v32 = 3;
unsigned short v31 = 4;

unsigned char v25 (signed int v34, unsigned int v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 2;
unsigned int v38 = 1U;
unsigned int v37 = 4U;
trace++;
switch (trace)
{
case 2: 
return 6;
default: abort ();
}
}
}
}

signed char v17 (unsigned short v40, signed short v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned char v44 = 7;
unsigned int v43 = 7U;
signed int v42 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned char v45, unsigned short v46, unsigned int v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -4;
signed int v49 = 3;
signed short v48 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v51, unsigned char v52)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
{
for (;;) {
signed int v55 = -3;
signed int v54 = 0;
unsigned short v53 = 2;
trace++;
switch (trace)
{
case 6: 
return 4U;
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
unsigned char v58;
signed int v59;
signed short v60;
unsigned short v61;
signed int v62;
v58 = 7 + 3;
v59 = v33 + 0;
v60 = -1 + -2;
v61 = v31 + v31;
v62 = v1 (v58, v59, v60, v61);
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
