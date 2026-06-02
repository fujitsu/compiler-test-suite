#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern signed short v5 (signed int, signed short);
extern signed short (*v6) (signed int, signed short);
extern unsigned char v7 (signed char, signed char);
extern unsigned char (*v8) (signed char, signed char);
extern unsigned int v9 (signed short, unsigned char, signed char, signed char);
extern unsigned int (*v10) (signed short, unsigned char, signed char, signed char);
extern signed int v11 (signed char, signed short, unsigned char, unsigned int);
extern signed int (*v12) (signed char, signed short, unsigned char, unsigned int);
extern unsigned int v13 (unsigned short, signed int);
extern unsigned int (*v14) (unsigned short, signed int);
extern unsigned char v15 (signed char, unsigned char, signed short);
extern unsigned char (*v16) (signed char, unsigned char, signed short);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern signed char v19 (signed int);
extern signed char (*v20) (signed int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
unsigned char v25 (signed short, unsigned char);
unsigned char (*v26) (signed short, unsigned char) = v25;
extern unsigned char v27 (unsigned char, signed char, signed int, unsigned int);
extern unsigned char (*v28) (unsigned char, signed char, signed int, unsigned int);
unsigned char v29 (unsigned int, unsigned char, unsigned char);
unsigned char (*v30) (unsigned int, unsigned char, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 1;
unsigned int v32 = 6U;
unsigned int v31 = 7U;

unsigned char v29 (unsigned int v34, unsigned char v35, unsigned char v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned char v39 = 6;
signed char v38 = 2;
signed char v37 = -4;
trace++;
switch (trace)
{
case 5: 
return v39;
case 7: 
return v36;
case 9: 
return v35;
case 11: 
return 6;
default: abort ();
}
}
}
}

unsigned char v25 (signed short v40, unsigned char v41)
{
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
signed int v44 = 2;
unsigned short v43 = 5;
unsigned int v42 = 3U;
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
signed short v47;
signed int v48;
v47 = v33 + -4;
v48 = v1 (v47);
history[history_index++] = (int)v48;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
