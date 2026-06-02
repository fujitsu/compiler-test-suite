#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed int v5 (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed int (*v6) (unsigned short, unsigned short, unsigned short, unsigned char);
extern signed short v7 (signed short, signed char, unsigned int, signed char);
extern signed short (*v8) (signed short, signed char, unsigned int, signed char);
extern unsigned int v9 (signed short, unsigned char, signed int, signed short);
extern unsigned int (*v10) (signed short, unsigned char, signed int, signed short);
extern unsigned char v11 (signed char, unsigned short);
extern unsigned char (*v12) (signed char, unsigned short);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern signed short v21 (unsigned short, signed int, signed int);
extern signed short (*v22) (unsigned short, signed int, signed int);
signed char v23 (signed int, signed short, signed short, unsigned short);
signed char (*v24) (signed int, signed short, signed short, unsigned short) = v23;
signed char v25 (signed int);
signed char (*v26) (signed int) = v25;
extern void v27 (unsigned int, unsigned char);
extern void (*v28) (unsigned int, unsigned char);
unsigned char v29 (unsigned short, unsigned int, signed int);
unsigned char (*v30) (unsigned short, unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 2;
signed int v32 = 2;
unsigned short v31 = 5;

unsigned char v29 (unsigned short v34, unsigned int v35, signed int v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 5U;
signed short v38 = -4;
unsigned short v37 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (signed int v40)
{
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -3;
unsigned int v42 = 5U;
signed char v41 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v23 (signed int v44, signed short v45, signed short v46, unsigned short v47)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed int v50 = 0;
unsigned int v49 = 0U;
signed char v48 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned int v53 = 4U;
signed short v52 = 2;
unsigned short v51 = 2;
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
signed char v56;
v56 = v1 ();
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
