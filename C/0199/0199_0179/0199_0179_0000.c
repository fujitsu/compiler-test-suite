#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
signed int v3 (signed short, unsigned int, unsigned int, signed char);
signed int (*v4) (signed short, unsigned int, unsigned int, signed char) = v3;
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v7 (signed int, unsigned int, signed char);
extern unsigned char (*v8) (signed int, unsigned int, signed char);
extern signed short v9 (signed int, unsigned char);
extern signed short (*v10) (signed int, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed char, signed char, signed int, unsigned short);
extern void (*v14) (signed char, signed char, signed int, unsigned short);
extern unsigned char v15 (signed short, signed short, unsigned short);
extern unsigned char (*v16) (signed short, signed short, unsigned short);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed char v23 (unsigned char, unsigned char, signed char);
extern signed char (*v24) (unsigned char, unsigned char, signed char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern signed short v29 (unsigned short, signed int);
extern signed short (*v30) (unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 5;
unsigned int v32 = 2U;
signed short v31 = -3;

signed int v19 (void)
{
{
for (;;) {
unsigned int v36 = 5U;
signed short v35 = 1;
signed char v34 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v37, unsigned int v38, unsigned int v39, signed char v40)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
signed char v43 = -2;
signed short v42 = 0;
unsigned int v41 = 6U;
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
signed char v46;
v46 = v1 ();
history[history_index++] = (int)v46;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
