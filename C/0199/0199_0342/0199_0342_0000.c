#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int);
extern signed short (*v2) (signed int);
extern unsigned int v5 (signed int);
extern unsigned int (*v6) (signed int);
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (signed int, signed short, unsigned char);
extern signed int (*v12) (signed int, signed short, unsigned char);
extern signed char v13 (signed char, signed char, signed short, signed char);
extern signed char (*v14) (signed char, signed char, signed short, signed char);
extern signed char v15 (signed int, unsigned char, signed char, signed short);
extern signed char (*v16) (signed int, unsigned char, signed char, signed short);
void v17 (unsigned short, unsigned short, unsigned char);
void (*v18) (unsigned short, unsigned short, unsigned char) = v17;
unsigned char v19 (unsigned char);
unsigned char (*v20) (unsigned char) = v19;
extern signed char v21 (signed char, signed int);
extern signed char (*v22) (signed char, signed int);
extern unsigned int v23 (unsigned int, unsigned short, signed short);
extern unsigned int (*v24) (unsigned int, unsigned short, signed short);
extern signed char v25 (void);
extern signed char (*v26) (void);
extern void v27 (unsigned short, signed char, unsigned char);
extern void (*v28) (unsigned short, signed char, unsigned char);
extern signed int v29 (unsigned char, unsigned char, signed char, unsigned short);
extern signed int (*v30) (unsigned char, unsigned char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 0;
unsigned int v32 = 1U;
unsigned short v31 = 1;

unsigned char v19 (unsigned char v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = 3;
signed char v36 = 0;
signed int v35 = 0;
trace++;
switch (trace)
{
case 7: 
return v34;
default: abort ();
}
}
}
}

void v17 (unsigned short v38, unsigned short v39, unsigned char v40)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
{
for (;;) {
unsigned short v43 = 1;
unsigned char v42 = 7;
unsigned short v41 = 1;
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
signed int v46;
signed short v47;
v46 = 3 - 2;
v47 = v1 (v46);
history[history_index++] = (int)v47;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
