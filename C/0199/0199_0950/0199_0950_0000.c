#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern unsigned short v3 (signed int, unsigned int);
extern unsigned short (*v4) (signed int, unsigned int);
unsigned char v5 (void);
unsigned char (*v6) (void) = v5;
extern signed int v7 (signed char, signed char, signed int);
extern signed int (*v8) (signed char, signed char, signed int);
extern unsigned int v9 (unsigned short, unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, unsigned short, signed int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (unsigned char, unsigned short);
extern signed char (*v14) (unsigned char, unsigned short);
unsigned int v17 (signed char, unsigned char, signed int);
unsigned int (*v18) (signed char, unsigned char, signed int) = v17;
signed short v19 (unsigned int, signed int);
signed short (*v20) (unsigned int, signed int) = v19;
unsigned int v21 (unsigned int, signed char);
unsigned int (*v22) (unsigned int, signed char) = v21;
extern signed short v23 (signed int, signed int, unsigned short);
extern signed short (*v24) (signed int, signed int, unsigned short);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern unsigned short v27 (signed char, signed char, signed char);
extern unsigned short (*v28) (signed char, signed char, signed char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 1;
unsigned short v32 = 5;
unsigned char v31 = 7;

unsigned int v21 (unsigned int v34, signed char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned int v38 = 4U;
unsigned short v37 = 1;
unsigned short v36 = 0;
trace++;
switch (trace)
{
case 7: 
return 4U;
default: abort ();
}
}
}
}

signed short v19 (unsigned int v39, signed int v40)
{
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 7U;
signed char v42 = 0;
signed int v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v17 (signed char v44, unsigned char v45, signed int v46)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
signed short v49 = -1;
signed short v48 = 1;
signed short v47 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (void)
{
{
for (;;) {
signed char v52 = 0;
unsigned short v51 = 0;
signed short v50 = -4;
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
unsigned int v55;
signed short v56;
v55 = 4U + 0U;
v56 = v1 (v55);
history[history_index++] = (int)v56;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
