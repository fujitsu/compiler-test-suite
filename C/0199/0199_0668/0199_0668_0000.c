#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern unsigned char v5 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned short);
signed short v7 (unsigned int, unsigned char, signed short, signed char);
signed short (*v8) (unsigned int, unsigned char, signed short, signed char) = v7;
extern signed int v9 (signed char, signed char, signed char);
extern signed int (*v10) (signed char, signed char, signed char);
extern void v11 (unsigned char);
extern void (*v12) (unsigned char);
extern signed char v13 (signed char, signed short);
extern signed char (*v14) (signed char, signed short);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern signed char v17 (unsigned short, signed int, signed int, unsigned short);
extern signed char (*v18) (unsigned short, signed int, signed int, unsigned short);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
extern signed int v25 (signed char);
extern signed int (*v26) (signed char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern unsigned short v29 (signed int, unsigned short, signed char, signed char);
extern unsigned short (*v30) (signed int, unsigned short, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned char v32 = 0;
signed short v31 = 0;

signed short v7 (unsigned int v34, unsigned char v35, signed short v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
signed short v40 = 0;
signed int v39 = -2;
signed int v38 = -4;
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
signed int v43;
unsigned short v44;
v43 = 3 + 2;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
