#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern signed short v3 (unsigned char, signed char);
extern signed short (*v4) (unsigned char, signed char);
extern signed short v5 (signed char, unsigned char, unsigned char);
extern signed short (*v6) (signed char, unsigned char, unsigned char);
extern signed int v7 (signed short, signed int);
extern signed int (*v8) (signed short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed short, unsigned char, signed int);
extern unsigned char (*v12) (signed short, unsigned char, signed int);
extern signed short v13 (signed char);
extern signed short (*v14) (signed char);
extern unsigned char v15 (signed int, unsigned char, unsigned short);
extern unsigned char (*v16) (signed int, unsigned char, unsigned short);
extern signed int v17 (unsigned short, signed int);
extern signed int (*v18) (unsigned short, signed int);
void v19 (signed int, unsigned int, signed char, signed char);
void (*v20) (signed int, unsigned int, signed char, signed char) = v19;
extern void v21 (unsigned int, signed int, unsigned short, signed int);
extern void (*v22) (unsigned int, signed int, unsigned short, signed int);
extern signed short v23 (unsigned char, signed int);
extern signed short (*v24) (unsigned char, signed int);
extern signed char v25 (unsigned short, unsigned short);
extern signed char (*v26) (unsigned short, unsigned short);
extern unsigned char v27 (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned char (*v28) (unsigned short, unsigned short, unsigned short, unsigned int);
extern unsigned int v29 (signed char, signed int);
extern unsigned int (*v30) (signed char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 3;
signed short v32 = -3;
unsigned int v31 = 2U;

void v19 (signed int v34, unsigned int v35, signed char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 5U;
signed char v39 = 3;
unsigned int v38 = 0U;
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
unsigned short v43;
v43 = v1 ();
history[history_index++] = (int)v43;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
