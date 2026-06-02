#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern signed int v5 (unsigned short, signed short, signed int, unsigned short);
extern signed int (*v6) (unsigned short, signed short, signed int, unsigned short);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern void v9 (void);
extern void (*v10) (void);
extern signed char v11 (signed short, unsigned short, unsigned char);
extern signed char (*v12) (signed short, unsigned short, unsigned char);
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern unsigned int v17 (signed int, unsigned char, unsigned int, signed char);
extern unsigned int (*v18) (signed int, unsigned char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, signed char, unsigned short, signed short);
extern void (*v24) (unsigned short, signed char, unsigned short, signed short);
extern signed short v25 (unsigned char, signed char, signed char, signed char);
extern signed short (*v26) (unsigned char, signed char, signed char, signed char);
signed int v27 (unsigned int);
signed int (*v28) (unsigned int) = v27;
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = 1;
unsigned char v32 = 6;
unsigned short v31 = 5;

signed char v29 (void)
{
{
for (;;) {
unsigned int v36 = 3U;
signed int v35 = 2;
unsigned int v34 = 5U;
trace++;
switch (trace)
{
case 4: 
return -2;
case 6: 
return 1;
default: abort ();
}
}
}
}

signed int v27 (unsigned int v37)
{
history[history_index++] = (int)v37;
{
for (;;) {
signed int v40 = -2;
unsigned short v39 = 4;
signed short v38 = 0;
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
signed char v43;
signed short v44;
v43 = 1 - 0;
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
