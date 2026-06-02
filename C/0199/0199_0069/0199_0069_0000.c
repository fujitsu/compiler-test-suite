#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed char, unsigned int);
extern signed short (*v2) (signed char, unsigned int);
extern unsigned short v3 (unsigned int, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned char, unsigned short, unsigned short);
extern signed short v5 (signed int);
extern signed short (*v6) (signed int);
extern signed int v7 (signed int, signed short);
extern signed int (*v8) (signed int, signed short);
extern signed int v11 (unsigned int, unsigned char);
extern signed int (*v12) (unsigned int, unsigned char);
signed short v13 (signed short, signed char);
signed short (*v14) (signed short, signed char) = v13;
extern unsigned short v17 (unsigned short, signed short, unsigned char, signed short);
extern unsigned short (*v18) (unsigned short, signed short, unsigned char, signed short);
extern unsigned short v19 (signed short, signed short, unsigned short);
extern unsigned short (*v20) (signed short, signed short, unsigned short);
signed char v21 (signed char, unsigned char, signed char);
signed char (*v22) (signed char, unsigned char, signed char) = v21;
extern signed char v23 (unsigned char, unsigned short);
extern signed char (*v24) (unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
signed short v29 (void);
signed short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v33 = 1;
signed short v32 = 2;
signed char v31 = -2;

signed short v29 (void)
{
{
for (;;) {
signed char v36 = -4;
signed char v35 = -4;
unsigned short v34 = 7;
trace++;
switch (trace)
{
case 8: 
return 2;
case 10: 
return -2;
default: abort ();
}
}
}
}

signed char v21 (signed char v37, unsigned char v38, signed char v39)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
{
for (;;) {
signed char v42 = 1;
unsigned int v41 = 4U;
signed int v40 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed short v43, signed char v44)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
{
for (;;) {
signed int v47 = 0;
unsigned short v46 = 3;
unsigned short v45 = 6;
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
signed char v50;
unsigned int v51;
signed short v52;
v50 = v31 + 3;
v51 = 1U + 3U;
v52 = v1 (v50, v51);
history[history_index++] = (int)v52;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
