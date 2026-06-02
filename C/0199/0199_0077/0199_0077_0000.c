#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned int);
extern unsigned int (*v2) (unsigned int);
extern void v3 (unsigned int, signed int, unsigned char, signed char);
extern void (*v4) (unsigned int, signed int, unsigned char, signed char);
extern signed int v5 (unsigned short, unsigned char, unsigned int, signed char);
extern signed int (*v6) (unsigned short, unsigned char, unsigned int, signed char);
extern unsigned short v7 (unsigned short, signed char);
extern unsigned short (*v8) (unsigned short, signed char);
signed int v9 (unsigned char, unsigned short, unsigned char, signed char);
signed int (*v10) (unsigned char, unsigned short, unsigned char, signed char) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned char v13 (signed short, unsigned int, signed int, signed int);
extern unsigned char (*v14) (signed short, unsigned int, signed int, signed int);
extern void v15 (void);
extern void (*v16) (void);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern unsigned int v19 (signed int, signed short);
extern unsigned int (*v20) (signed int, signed short);
extern unsigned char v21 (signed short);
extern unsigned char (*v22) (signed short);
extern void v23 (unsigned short, signed short, unsigned char, unsigned char);
extern void (*v24) (unsigned short, signed short, unsigned char, unsigned char);
extern signed short v25 (unsigned int, signed short, unsigned short, unsigned short);
extern signed short (*v26) (unsigned int, signed short, unsigned short, unsigned short);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
extern unsigned int v29 (signed int, unsigned short, signed short, unsigned short);
extern unsigned int (*v30) (signed int, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v33 = 3U;
signed short v32 = -2;
unsigned short v31 = 6;

signed int v9 (unsigned char v34, unsigned short v35, unsigned char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 0U;
signed char v39 = 0;
unsigned short v38 = 5;
trace++;
switch (trace)
{
case 11: 
return -4;
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
unsigned int v43;
unsigned int v44;
v43 = v33 - 4U;
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
