#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed char, signed char, unsigned short, signed short);
extern void (*v2) (signed char, signed char, unsigned short, signed short);
extern unsigned int v5 (signed int, signed int, unsigned int, signed short);
extern unsigned int (*v6) (signed int, signed int, unsigned int, signed short);
extern unsigned int v7 (signed int, unsigned int, unsigned char);
extern unsigned int (*v8) (signed int, unsigned int, unsigned char);
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned char v15 (unsigned short, signed char, signed int);
extern unsigned char (*v16) (unsigned short, signed char, signed int);
extern signed char v17 (signed int);
extern signed char (*v18) (signed int);
extern signed int v19 (void);
extern signed int (*v20) (void);
unsigned int v21 (unsigned int, unsigned int, signed int);
unsigned int (*v22) (unsigned int, unsigned int, signed int) = v21;
extern signed int v23 (signed char, unsigned int, signed int, signed short);
extern signed int (*v24) (signed char, unsigned int, signed int, signed short);
extern unsigned short v25 (unsigned int, unsigned int, unsigned char);
extern unsigned short (*v26) (unsigned int, unsigned int, unsigned char);
extern unsigned int v27 (unsigned int, signed int, signed int);
extern unsigned int (*v28) (unsigned int, signed int, signed int);
unsigned short v29 (unsigned int, unsigned short, signed char, signed int);
unsigned short (*v30) (unsigned int, unsigned short, signed char, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 0;
unsigned char v32 = 5;
signed int v31 = -3;

unsigned short v29 (unsigned int v34, unsigned short v35, signed char v36, signed int v37)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
{
for (;;) {
unsigned short v40 = 0;
signed char v39 = -1;
unsigned char v38 = 6;
trace++;
switch (trace)
{
case 2: 
return v35;
case 4: 
return v35;
case 6: 
return v40;
case 8: 
return v40;
case 10: 
return v35;
default: abort ();
}
}
}
}

unsigned int v21 (unsigned int v41, unsigned int v42, signed int v43)
{
history[history_index++] = (int)v41;
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
{
for (;;) {
unsigned char v46 = 0;
unsigned int v45 = 3U;
signed int v44 = -4;
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
signed char v49;
signed char v50;
unsigned short v51;
signed short v52;
v49 = 2 + -1;
v50 = 0 - -4;
v51 = 0 + 2;
v52 = -4 - 3;
v1 (v49, v50, v51, v52);
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
