#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (unsigned char, signed int);
extern signed short (*v2) (unsigned char, signed int);
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned int v5 (signed short, signed short, unsigned int, unsigned int);
extern unsigned int (*v6) (signed short, signed short, unsigned int, unsigned int);
extern signed short v7 (signed int);
extern signed short (*v8) (signed int);
extern unsigned int v9 (signed int);
extern unsigned int (*v10) (signed int);
signed int v11 (signed short, signed int);
signed int (*v12) (signed short, signed int) = v11;
extern signed int v13 (unsigned short, unsigned short);
extern signed int (*v14) (unsigned short, unsigned short);
extern unsigned short v15 (unsigned int, unsigned char, unsigned int, unsigned int);
extern unsigned short (*v16) (unsigned int, unsigned char, unsigned int, unsigned int);
unsigned char v17 (unsigned char, signed short);
unsigned char (*v18) (unsigned char, signed short) = v17;
void v19 (unsigned short, signed int, unsigned short, unsigned int);
void (*v20) (unsigned short, signed int, unsigned short, unsigned int) = v19;
extern unsigned int v21 (signed char, unsigned short, signed short);
extern unsigned int (*v22) (signed char, unsigned short, signed short);
extern unsigned short v23 (signed int, unsigned int);
extern unsigned short (*v24) (signed int, unsigned int);
extern unsigned short v25 (signed short, signed char, signed short, unsigned int);
extern unsigned short (*v26) (signed short, signed char, signed short, unsigned int);
extern unsigned char v27 (signed int, unsigned char);
extern unsigned char (*v28) (signed int, unsigned char);
extern signed int v29 (signed short);
extern signed int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned short v32 = 1;
signed char v31 = -4;

void v19 (unsigned short v34, signed int v35, unsigned short v36, unsigned int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 0U;
signed int v39 = 0;
signed short v38 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (unsigned char v41, signed short v42)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
{
for (;;) {
unsigned short v45 = 1;
signed short v44 = 3;
signed int v43 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (signed short v46, signed int v47)
{
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed char v50 = -2;
signed short v49 = 2;
signed short v48 = 0;
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
unsigned char v53;
signed int v54;
signed short v55;
v53 = 7 - 4;
v54 = -4 - -1;
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
