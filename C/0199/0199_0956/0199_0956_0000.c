#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int, unsigned short);
extern void (*v2) (signed int, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern unsigned char v9 (signed char, signed int, unsigned short);
extern unsigned char (*v10) (signed char, signed int, unsigned short);
extern unsigned int v11 (signed short, unsigned char, unsigned int);
extern unsigned int (*v12) (signed short, unsigned char, unsigned int);
extern signed int v13 (unsigned short);
extern signed int (*v14) (unsigned short);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern signed short v17 (signed int, signed short, signed short);
extern signed short (*v18) (signed int, signed short, signed short);
extern unsigned short v19 (unsigned short);
extern unsigned short (*v20) (unsigned short);
extern unsigned char v21 (signed int);
extern unsigned char (*v22) (signed int);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -1;
unsigned short v32 = 5;
unsigned int v31 = 7U;

signed int v23 (void)
{
{
for (;;) {
signed char v36 = 3;
unsigned char v35 = 4;
unsigned int v34 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v39 = 3U;
signed short v38 = -1;
signed int v37 = 3;
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
signed int v42;
unsigned short v43;
v42 = -3 + v33;
v43 = 7 - 6;
v1 (v42, v43);
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
