#include <stdio.h>
#include <stdlib.h>
static signed int v1 (unsigned char, signed int, signed char);
static signed int (*v2) (unsigned char, signed int, signed char) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern unsigned int v5 (signed int, signed char, unsigned int, signed int);
extern unsigned int (*v6) (signed int, signed char, unsigned int, signed int);
extern signed int v7 (signed int, unsigned short, unsigned int);
extern signed int (*v8) (signed int, unsigned short, unsigned int);
extern unsigned int v9 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v10) (unsigned int, unsigned int, unsigned int);
unsigned short v11 (unsigned char, signed short, signed int, unsigned short);
unsigned short (*v12) (unsigned char, signed short, signed int, unsigned short) = v11;
void v13 (void);
void (*v14) (void) = v13;
extern signed int v15 (unsigned int);
extern signed int (*v16) (unsigned int);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned short v19 (unsigned short, unsigned int);
extern unsigned short (*v20) (unsigned short, unsigned int);
extern signed short v21 (void);
extern signed short (*v22) (void);
extern signed int v25 (signed int);
extern signed int (*v26) (signed int);
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
signed int v29 (signed char, unsigned short, unsigned short);
signed int (*v30) (signed char, unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v33 = 4;
unsigned short v32 = 7;
signed int v31 = 3;

signed int v29 (signed char v34, unsigned short v35, unsigned short v36)
{
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
{
for (;;) {
unsigned short v39 = 3;
unsigned int v38 = 3U;
unsigned char v37 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (void)
{
{
for (;;) {
unsigned char v42 = 7;
signed int v41 = -4;
unsigned int v40 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v11 (unsigned char v43, signed short v44, signed int v45, unsigned short v46)
{
history[history_index++] = (int)v43;
history[history_index++] = (int)v44;
history[history_index++] = (int)v45;
history[history_index++] = (int)v46;
{
for (;;) {
unsigned short v49 = 5;
signed short v48 = 3;
unsigned short v47 = 5;
trace++;
switch (trace)
{
case 7: 
{
signed char v50;
v50 = v17 ();
history[history_index++] = (int)v50;
}
break;
case 13: 
return v47;
default: abort ();
}
}
}
}

static signed int v1 (unsigned char v51, signed int v52, signed char v53)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
{
for (;;) {
unsigned short v56 = 0;
signed short v55 = 3;
signed char v54 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v57;
unsigned int v58;
unsigned short v59;
v57 = 5 + 4;
v58 = 1U + 6U;
v59 = v19 (v57, v58);
history[history_index++] = (int)v59;
}
break;
case 2: 
{
unsigned int v60;
signed int v61;
v60 = 3U + 2U;
v61 = v15 (v60);
history[history_index++] = (int)v61;
}
break;
case 4: 
return 2;
case 5: 
{
unsigned int v62;
signed int v63;
v62 = 0U + 3U;
v63 = v15 (v62);
history[history_index++] = (int)v63;
}
break;
case 15: 
return v52;
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
unsigned char v66;
signed int v67;
signed char v68;
signed int v69;
v66 = 7 - 1;
v67 = v31 - -3;
v68 = 2 + -2;
v69 = v1 (v66, v67, v68);
history[history_index++] = (int)v69;
}
} while (trace < 15);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
