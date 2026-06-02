#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern unsigned short v3 (unsigned char, signed char, signed char);
extern unsigned short (*v4) (unsigned char, signed char, signed char);
extern void v5 (unsigned int, signed short);
extern void (*v6) (unsigned int, signed short);
extern signed char v7 (signed short, signed short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short);
extern void v11 (signed short, unsigned short);
extern void (*v12) (signed short, unsigned short);
extern unsigned char v13 (signed int, unsigned short, signed short, signed int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, signed int);
extern void v15 (unsigned int, unsigned short, unsigned int, signed int);
extern void (*v16) (unsigned int, unsigned short, unsigned int, signed int);
extern unsigned short v17 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned char, unsigned int, unsigned short, unsigned int);
extern void v19 (unsigned short, signed short);
extern void (*v20) (unsigned short, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed short v25 (signed short, signed int, unsigned short);
signed short (*v26) (signed short, signed int, unsigned short) = v25;
unsigned int v27 (unsigned char, signed int, unsigned int, signed int);
unsigned int (*v28) (unsigned char, signed int, unsigned int, signed int) = v27;
signed short v29 (unsigned int);
signed short (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v33 = 3;
signed char v32 = 3;
unsigned int v31 = 1U;

signed short v29 (unsigned int v34)
{
history[history_index++] = (int)v34;
{
for (;;) {
signed char v37 = -1;
unsigned short v36 = 4;
signed short v35 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v27 (unsigned char v38, signed int v39, unsigned int v40, signed int v41)
{
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
{
for (;;) {
unsigned short v44 = 2;
signed char v43 = -2;
signed int v42 = 0;
trace++;
switch (trace)
{
case 3: 
return v40;
case 6: 
return v40;
case 9: 
return 0U;
case 11: 
return v40;
default: abort ();
}
}
}
}

signed short v25 (signed short v45, signed int v46, unsigned short v47)
{
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
history[history_index++] = (int)v47;
{
for (;;) {
signed short v50 = 3;
signed int v49 = 2;
unsigned short v48 = 2;
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
signed int v53;
unsigned char v54;
v53 = -1 + 3;
v54 = v1 (v53);
history[history_index++] = (int)v54;
}
} while (trace < 14);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
