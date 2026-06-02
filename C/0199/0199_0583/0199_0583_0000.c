#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned short, unsigned short);
extern signed short (*v2) (unsigned short, unsigned short);
extern signed char v3 (signed int, unsigned int, signed short);
extern signed char (*v4) (signed int, unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern void v7 (signed char, signed short, unsigned short, unsigned short);
extern void (*v8) (signed char, signed short, unsigned short, unsigned short);
extern signed int v9 (signed short);
extern signed int (*v10) (signed short);
unsigned char v11 (signed short);
unsigned char (*v12) (signed short) = v11;
extern unsigned int v13 (signed int);
extern unsigned int (*v14) (signed int);
signed short v15 (signed char);
signed short (*v16) (signed char) = v15;
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
unsigned char v29 (unsigned char, signed short, signed char);
unsigned char (*v30) (unsigned char, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
unsigned char v32 = 6;
signed char v31 = 0;

unsigned char v29 (unsigned char v34, signed short v35, signed char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
signed short v39 = 0;
signed int v38 = -2;
signed int v37 = 3;
trace++;
switch (trace)
{
case 3: 
return 6;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
signed int v42 = 2;
signed int v41 = 0;
unsigned short v40 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v43)
{
history[history_index++] = (int)v43;
{
for (;;) {
unsigned short v46 = 5;
signed char v45 = -1;
unsigned int v44 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed short v47)
{
history[history_index++] = (int)v47;
{
for (;;) {
unsigned char v50 = 3;
signed char v49 = -2;
unsigned int v48 = 0U;
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
unsigned short v53;
unsigned short v54;
signed short v55;
v53 = 5 - 0;
v54 = 3 + 7;
v55 = v1 (v53, v54);
history[history_index++] = (int)v55;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
