#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (unsigned int, signed char);
extern unsigned int (*v4) (unsigned int, signed char);
extern unsigned short v5 (signed int);
extern unsigned short (*v6) (signed int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed int v9 (signed short, signed int, signed short);
extern signed int (*v10) (signed short, signed int, signed short);
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
signed int v13 (unsigned short, unsigned short, unsigned int, signed int);
signed int (*v14) (unsigned short, unsigned short, unsigned int, signed int) = v13;
unsigned int v15 (unsigned short, signed char, signed short);
unsigned int (*v16) (unsigned short, signed char, signed short) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
signed int v25 (signed char, signed int);
signed int (*v26) (signed char, signed int) = v25;
unsigned int v27 (unsigned short, signed short, signed int);
unsigned int (*v28) (unsigned short, signed short, signed int) = v27;
extern signed short v29 (signed char, unsigned int, unsigned short);
extern signed short (*v30) (signed char, unsigned int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed short v32 = 0;
unsigned short v31 = 4;

unsigned int v27 (unsigned short v34, signed short v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed int v39 = 0;
unsigned short v38 = 0;
unsigned int v37 = 2U;
trace++;
switch (trace)
{
case 3: 
return 4U;
case 10: 
return 5U;
default: abort ();
}
}
}
}

signed int v25 (signed char v40, signed int v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 3;
unsigned char v43 = 2;
signed short v42 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v45, signed char v46, signed short v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 2;
unsigned short v49 = 3;
unsigned int v48 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v51, unsigned short v52, unsigned int v53, signed int v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed int v57 = -2;
unsigned char v56 = 5;
signed int v55 = 0;
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
unsigned short v60;
v60 = v1 ();
history[history_index++] = (int)v60;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
