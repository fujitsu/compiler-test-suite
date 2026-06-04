#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (signed short, signed int, signed short, unsigned short);
extern signed int (*v4) (signed short, signed int, signed short, unsigned short);
extern signed int v5 (signed int, signed short, signed short);
extern signed int (*v6) (signed int, signed short, signed short);
extern unsigned char v7 (signed int, signed char, signed short, unsigned char);
extern unsigned char (*v8) (signed int, signed char, signed short, unsigned char);
extern unsigned int v9 (signed short, signed int, unsigned int);
extern unsigned int (*v10) (signed short, signed int, unsigned int);
extern unsigned char v11 (void);
extern unsigned char (*v12) (void);
extern unsigned short v13 (signed short, unsigned int, unsigned int, signed short);
extern unsigned short (*v14) (signed short, unsigned int, unsigned int, signed short);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
extern signed int v17 (signed short, unsigned short, unsigned int, unsigned short);
extern signed int (*v18) (signed short, unsigned short, unsigned int, unsigned short);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
unsigned char v23 (unsigned int, signed int, unsigned char, unsigned char);
unsigned char (*v24) (unsigned int, signed int, unsigned char, unsigned char) = v23;
unsigned short v25 (unsigned short, unsigned char);
unsigned short (*v26) (unsigned short, unsigned char) = v25;
extern unsigned char v27 (unsigned int, signed int);
extern unsigned char (*v28) (unsigned int, signed int);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v33 = -3;
unsigned char v32 = 7;
unsigned char v31 = 2;

unsigned short v29 (void)
{
{
for (;;) {
unsigned int v36 = 4U;
signed char v35 = 0;
unsigned short v34 = 5;
trace++;
switch (trace)
{
case 2: 
return v34;
case 4: 
return 6;
case 6: 
return v34;
default: abort ();
}
}
}
}

unsigned short v25 (unsigned short v37, unsigned char v38)
{
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
{
for (;;) {
unsigned int v41 = 3U;
unsigned char v40 = 7;
signed int v39 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v42, signed int v43, unsigned char v44, unsigned char v45)
{
history[history_index++] = (int)v42;
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
{
for (;;) {
signed char v48 = 2;
unsigned char v47 = 7;
signed char v46 = 2;
trace++;
switch (trace)
{
case 11: 
return 1;
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
unsigned char v51;
v51 = v1 ();
history[history_index++] = (int)v51;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
