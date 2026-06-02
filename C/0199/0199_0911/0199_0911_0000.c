#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned short v5 (unsigned short, signed int, unsigned int);
extern unsigned short (*v6) (unsigned short, signed int, unsigned int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned char v11 (signed int, signed char);
unsigned char (*v12) (signed int, signed char) = v11;
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (signed int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned char);
extern signed char v17 (signed char, unsigned char);
extern signed char (*v18) (signed char, unsigned char);
extern unsigned int v19 (signed char, signed int, signed char);
extern unsigned int (*v20) (signed char, signed int, signed char);
extern signed char v21 (void);
extern signed char (*v22) (void);
signed short v23 (unsigned int, signed int, signed int, unsigned int);
signed short (*v24) (unsigned int, signed int, signed int, unsigned int) = v23;
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
extern unsigned char v27 (signed short, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short);
void v29 (void);
void (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 6U;
signed short v32 = -1;
unsigned char v31 = 4;

void v29 (void)
{
{
for (;;) {
signed char v36 = -3;
signed int v35 = 2;
signed short v34 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned int v37, signed int v38, signed int v39, unsigned int v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned int v43 = 2U;
signed char v42 = -2;
signed short v41 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (signed int v44, signed char v45)
{
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
unsigned int v48 = 2U;
signed short v47 = 3;
unsigned int v46 = 5U;
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
signed short v51;
v51 = v1 ();
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
