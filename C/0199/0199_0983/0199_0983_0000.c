#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned short, unsigned int);
extern unsigned int (*v2) (signed short, unsigned short, unsigned int);
extern unsigned char v3 (signed char, unsigned int);
extern unsigned char (*v4) (signed char, unsigned int);
extern void v5 (signed int, unsigned int, signed short, signed int);
extern void (*v6) (signed int, unsigned int, signed short, signed int);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
extern void v11 (signed short, signed short, unsigned char);
extern void (*v12) (signed short, signed short, unsigned char);
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern unsigned int v15 (unsigned short, signed short, unsigned char, signed char);
extern unsigned int (*v16) (unsigned short, signed short, unsigned char, signed char);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (unsigned int, signed int, unsigned int);
extern unsigned int (*v22) (unsigned int, signed int, unsigned int);
extern void v23 (signed short, unsigned int, signed int, unsigned int);
extern void (*v24) (signed short, unsigned int, signed int, unsigned int);
extern void v25 (signed int, unsigned char);
extern void (*v26) (signed int, unsigned char);
void v27 (unsigned short, signed int, unsigned char);
void (*v28) (unsigned short, signed int, unsigned char) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 0U;
signed short v32 = -2;
unsigned int v31 = 0U;

void v27 (unsigned short v34, signed int v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned int v39 = 4U;
unsigned int v38 = 0U;
unsigned short v37 = 6;
trace++;
switch (trace)
{
case 4: 
return;
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
signed short v42;
unsigned short v43;
unsigned int v44;
unsigned int v45;
v42 = 3 - v32;
v43 = 5 + 3;
v44 = 0U - 2U;
v45 = v1 (v42, v43, v44);
history[history_index++] = (int)v45;
}
} while (trace < 13);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
