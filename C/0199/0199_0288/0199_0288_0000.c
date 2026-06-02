#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, signed short, signed char);
extern signed short (*v2) (signed int, signed short, signed char);
extern unsigned char v3 (signed short, signed int);
extern unsigned char (*v4) (signed short, signed int);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern signed int v7 (signed char, unsigned short, signed int);
extern signed int (*v8) (signed char, unsigned short, signed int);
extern unsigned short v9 (signed char, signed int, signed int);
extern unsigned short (*v10) (signed char, signed int, signed int);
extern signed short v11 (signed int, unsigned char, unsigned char);
extern signed short (*v12) (signed int, unsigned char, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (unsigned char);
extern signed char (*v18) (unsigned char);
void v19 (signed short, signed short, signed short);
void (*v20) (signed short, signed short, signed short) = v19;
void v21 (signed char, unsigned int);
void (*v22) (signed char, unsigned int) = v21;
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed int v27 (signed char, signed char, unsigned char, unsigned short);
extern signed int (*v28) (signed char, signed char, unsigned char, unsigned short);
extern unsigned short v29 (unsigned int);
extern unsigned short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v33 = 2;
signed int v32 = 1;
unsigned int v31 = 3U;

signed int v25 (void)
{
{
for (;;) {
signed int v36 = -4;
signed char v35 = 1;
unsigned char v34 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed char v37, unsigned int v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned char v41 = 5;
signed char v40 = 3;
unsigned int v39 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed short v42, signed short v43, signed short v44)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
unsigned char v47 = 5;
signed short v46 = -1;
signed int v45 = 3;
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
signed int v50;
signed short v51;
signed char v52;
signed short v53;
v50 = v32 + 1;
v51 = -3 + 0;
v52 = 0 - -2;
v53 = v1 (v50, v51, v52);
history[history_index++] = (int)v53;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
