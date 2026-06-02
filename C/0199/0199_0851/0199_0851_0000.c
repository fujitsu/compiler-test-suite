#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern void v3 (void);
extern void (*v4) (void);
extern unsigned int v5 (unsigned short, unsigned short, unsigned char);
extern unsigned int (*v6) (unsigned short, unsigned short, unsigned char);
extern void v9 (unsigned int, unsigned int, unsigned short);
extern void (*v10) (unsigned int, unsigned int, unsigned short);
extern signed short v11 (unsigned int, unsigned int, unsigned short);
extern signed short (*v12) (unsigned int, unsigned int, unsigned short);
extern unsigned char v13 (unsigned short, signed int);
extern unsigned char (*v14) (unsigned short, signed int);
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed int v17 (unsigned short, unsigned char);
extern signed int (*v18) (unsigned short, unsigned char);
extern unsigned int v19 (unsigned short, unsigned char, unsigned int, signed short);
extern unsigned int (*v20) (unsigned short, unsigned char, unsigned int, signed short);
extern signed short v21 (unsigned int, unsigned int, unsigned short, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int, unsigned short, unsigned int);
signed char v23 (signed int, signed char, signed char, signed char);
signed char (*v24) (signed int, signed char, signed char, signed char) = v23;
extern signed short v25 (signed char, unsigned int, signed int);
extern signed short (*v26) (signed char, unsigned int, signed int);
extern unsigned short v27 (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned char, signed short, unsigned char, unsigned short);
extern unsigned short v29 (unsigned char, signed int, unsigned char);
extern unsigned short (*v30) (unsigned char, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = -1;
unsigned int v32 = 3U;
unsigned char v31 = 7;

signed char v23 (signed int v34, signed char v35, signed char v36, signed char v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned int v40 = 5U;
signed short v39 = -2;
signed int v38 = -3;
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
unsigned int v44;
v43 = 6 - 5;
v44 = v1 (v43);
history[history_index++] = (int)v44;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
