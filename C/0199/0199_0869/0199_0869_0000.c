#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed char, signed char, signed char);
extern signed char (*v2) (signed char, signed char, signed char);
extern void v3 (signed char, unsigned int);
extern void (*v4) (signed char, unsigned int);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
extern unsigned char v7 (signed char, unsigned short, signed char);
extern unsigned char (*v8) (signed char, unsigned short, signed char);
signed int v9 (unsigned char);
signed int (*v10) (unsigned char) = v9;
extern unsigned char v11 (signed char, signed int, signed char);
extern unsigned char (*v12) (signed char, signed int, signed char);
extern unsigned char v13 (unsigned int, signed short, unsigned int);
extern unsigned char (*v14) (unsigned int, signed short, unsigned int);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned char v21 (signed int, signed short, unsigned int);
extern unsigned char (*v22) (signed int, signed short, unsigned int);
extern signed int v23 (signed char, unsigned char);
extern signed int (*v24) (signed char, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned short v27 (unsigned int, signed int, unsigned char, unsigned short);
extern unsigned short (*v28) (unsigned int, signed int, unsigned char, unsigned short);
signed short v29 (unsigned short, unsigned char);
signed short (*v30) (unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned int v32 = 5U;
signed short v31 = -4;

signed short v29 (unsigned short v34, unsigned char v35)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
{
for (;;) {
unsigned short v38 = 7;
unsigned char v37 = 2;
signed short v36 = -4;
trace++;
switch (trace)
{
case 2: 
return v36;
case 4: 
return v36;
case 6: 
return v36;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v39)
{
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 2;
unsigned char v41 = 3;
unsigned short v40 = 7;
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
signed char v45;
signed char v46;
signed char v47;
signed char v48;
v45 = 2 - 3;
v46 = 3 - 1;
v47 = -2 - -4;
v48 = v1 (v45, v46, v47);
history[history_index++] = (int)v48;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
