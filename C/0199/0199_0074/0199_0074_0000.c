#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned int);
extern void (*v2) (signed char, signed char, unsigned int);
extern signed short v3 (signed int, unsigned char, unsigned short, signed int);
extern signed short (*v4) (signed int, unsigned char, unsigned short, signed int);
signed short v5 (void);
signed short (*v6) (void) = v5;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (unsigned int, unsigned char, signed int);
extern unsigned char (*v12) (unsigned int, unsigned char, signed int);
extern signed char v13 (signed int);
extern signed char (*v14) (signed int);
extern signed int v15 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v16) (unsigned int, signed int, unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
signed short v19 (signed short);
signed short (*v20) (signed short) = v19;
extern unsigned char v21 (signed char, signed int);
extern unsigned char (*v22) (signed char, signed int);
extern unsigned short v23 (unsigned int, unsigned char, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned char, unsigned char);
signed int v25 (void);
signed int (*v26) (void) = v25;
signed char v27 (signed int);
signed char (*v28) (signed int) = v27;
unsigned char v29 (unsigned short, signed char, unsigned int, signed char);
unsigned char (*v30) (unsigned short, signed char, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
unsigned char v32 = 4;
signed char v31 = -3;

unsigned char v29 (unsigned short v34, signed char v35, unsigned int v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 0;
unsigned short v39 = 1;
unsigned short v38 = 1;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed char v27 (signed int v41)
{
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 2;
unsigned int v43 = 6U;
signed short v42 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v25 (void)
{
{
for (;;) {
unsigned short v47 = 5;
unsigned char v46 = 3;
signed short v45 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v19 (signed short v48)
{
history[history_index++] = (int)v48;
{
for (;;) {
signed int v51 = -2;
unsigned short v50 = 5;
unsigned int v49 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (void)
{
{
for (;;) {
signed char v54 = -1;
signed char v53 = -1;
unsigned int v52 = 3U;
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
signed char v57;
signed char v58;
unsigned int v59;
v57 = v31 + -1;
v58 = -3 + 2;
v59 = 1U - 5U;
v1 (v57, v58, v59);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
